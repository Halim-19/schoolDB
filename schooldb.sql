-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2024 at 09:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `Matricule` int(11) DEFAULT NULL,
  `Nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Matricule`, `Nom`, `Prenom`) VALUES
(1698, 1, 'AHSSEN/أحسن', 'OMAR ABDELMADJID/عمر عبد المجيد'),
(1699, 2, 'AICHOUBA/عيشوبة', 'Hayet/حياة'),
(1700, 3, 'AKROUM/عكروم', 'WAFAE/وفاء'),
(1701, 4, 'ARBI/عربي', 'LINDA/ليندة'),
(1702, 5, 'ARFI/عرفي', 'HAMZA ABDALLAH/حمزة عبد الله'),
(1703, 6, 'ARFI/عرفي', 'MOHAMED ADEL/محمد عادل'),
(1704, 7, 'AZZAZ/عزاز', 'YOUCEF SEDDIK/يوسف صديق'),
(1705, 8, 'BAHLOUL/بهلول', 'ABOUBAKEUR SEDDIK/ابو بكر الصديق'),
(1706, 9, 'BAKBAK/بقبق', 'NADJAT NISSERINE/نجاة نسرين'),
(1707, 10, 'BEHALIL/بهاليل', 'AYA/اية'),
(1708, 11, 'BEKHADRA/بخضرة', 'ABDELHALIM/عبد الحليم'),
(1709, 12, 'BEKHADRA/بخضرة', 'YOUNES/يونس'),
(1710, 13, 'BELHADJADJI/بلحجاجي', 'DOUAA HOUDA/دعاء هدى'),
(1711, 14, 'BELKAHLA/بلكحلة', 'MOHAMED MUSTEPHA/محمد مصطفى'),
(1712, 15, 'BELMILOUD/بلميلود', 'MERIEM/مريم'),
(1713, 16, 'BENAOUF/بن عوف', 'KHOULOUD/خلود'),
(1714, 17, 'BENGHERIB/بن غريب', 'HABIB/حبيب'),
(1715, 18, 'BENGUELLA/بن قلة', 'MOHAMMED ELAMINE TAHAR/محمد الأمين طاهر'),
(1716, 19, 'BENMAGHNIA/بن مغنية', 'AMINA/أمينة'),
(1717, 20, 'BENSALEM/بن سالم', 'ABDELHALIM/عبد الحليم'),
(1718, 21, 'BENSLIMANE/بن سليمان', 'BASMA SOUMIA/بسمة سمية'),
(1719, 22, 'BOUABSA/بوعبسة', 'ZAKARIA/زكرياء'),
(1720, 23, 'BOUDEFLA/بودفلة', 'BOUCHRA/بشرى'),
(1721, 24, 'BOUDERBALA/بودربالة', 'MOHAMED ABDERRAHMANE/محمد عبد الرحمان'),
(1722, 25, 'BOUHADDA/بوهدة', 'MOHAMED/محمد'),
(1723, 26, 'BOUMAZA/بومعزة', 'GHRICI/غريسي'),
(1724, 27, 'BOURAHLA/بورحلة', 'YAMINA/يمينة'),
(1725, 28, 'ELAOUDI/العودي', 'FATIMA ZOHRA/فاطيمة الزهرة'),
(1726, 29, 'GHERIB/غريب', 'ABDLENOUR/عبد النور'),
(1727, 30, 'HAOUD/حوض', 'AZEDDINE/عز الدين'),
(1728, 31, 'KHATIB/خطيب', 'AMINA/أمينة'),
(1729, 32, 'MAZOUZ/معزوز', 'AYMEN CHAMESS EDDINE/ايمن شمس الدين'),
(1730, 33, 'MEKKAOUI/مكاوي', 'FOUAD/فؤاد'),
(1731, 34, 'MOUSSAOUI/موساوي', 'HANENE/حنان'),
(1732, 35, 'YKHLEF/يخلف', 'IBTISSEM/إبتسام'),
(1733, 36, 'ADDA BERKANE/عدة بركان', 'BENALI/بن علي'),
(1734, 37, 'ADEM/ادم', 'MOKHTAR/مختار'),
(1735, 38, 'BAKI/باقي', 'FATIMA/فاطمة الزهراء'),
(1736, 39, 'BELKHIRA/بلخيرة', 'HACHEMI/الهاشمي'),
(1737, 40, 'BENBAHI/بن باهي', 'MOUAD/معاذ'),
(1738, 41, 'BENFRID/بن فريد', 'MOHAMED/محمد'),
(1739, 42, 'BENTEHAMI/بن تهامي', 'AYOUB/أيوب'),
(1740, 43, 'BOUAZZA/بوعزة', 'BACHIR/بشير'),
(1741, 44, 'BOUDJELAL/بوجلال', 'MAROUA/مروة'),
(1742, 45, 'BOUHENNA/بوهنة', 'RAHMA/رحمة'),
(1743, 46, 'BOUKEFOUSSA/بوكفوسة', 'HADJER/هاجر'),
(1744, 47, 'BOUMAZA/بومعزة', 'AICHA SOUHILA/عائشة سهيلة'),
(1745, 48, 'BOUMEDINE/بومدين', 'HADJER/هاجر'),
(1746, 49, 'BOUSLAMA/بوسلامة', 'ISLEM/إسلام'),
(1747, 50, 'BRAHIM/ابراهيم', 'MOKHTAR YACINE/مختار ياسين'),
(1748, 51, 'BREIK/بريك', 'RABAB/رباب'),
(1749, 52, 'CHERIFI/شريفي', 'MOHAMED LARBI/محمد العربي'),
(1750, 53, 'DAHAS/دحاس', 'OUM EL KHEIR/أم الخير'),
(1751, 54, 'DARA/دارة', 'CHAIMAA/شيماء'),
(1752, 55, 'DEBBAT/دبات', 'ASMAA/اسماء'),
(1753, 56, 'DEBBI/دبي', 'AYA IBTISSEM/أية ابتسام'),
(1754, 57, 'DERGAL/درقال', 'LINA IMAN/لينا ايمان'),
(1755, 58, 'DJELTI/جلطي', 'MERIEM/مريم'),
(1756, 59, 'FARES/فارس', 'YOUNES/يونس'),
(1757, 60, 'FELLAH/فلاح', 'DOUAA/دعاء'),
(1758, 61, 'GHEZLAOUI/غزلاوي', 'MOHAMED RAYANE/محمد ريان'),
(1759, 62, 'GHOURBAL/غربال', 'AYOUB/أيوب'),
(1760, 63, 'HABIBI/حبيبي', 'KHAOULA/خولة'),
(1761, 64, 'HABIBI/حبيبي', 'NOUR  EL HOUDA/نور الهدى'),
(1762, 65, 'HAIBOUN/حيبون', 'YOUCEF/يوسف'),
(1763, 66, 'HAMADOUCHE/حمادوش', 'HANAA/هناء'),
(1764, 67, 'HAMDADOU/حمدادو', 'YASSINE DJAAFRI/ياسين جعفري'),
(1765, 68, 'HAMDOUCHE/حمدوش', 'FATIMA ZOHRA/فطيمة الزهرة'),
(1766, 69, 'HAMIMED/حميمد', 'MOUNIR CHEMS EDDINE/منير شمس الدين'),
(1767, 70, 'KADDOURI/قدوري', 'WALID MOHAMMED/وليد محمد'),
(1768, 71, 'KASMI/قاسمي', 'YAHIA/يحي'),
(1769, 72, 'KERMAME/قرمام', 'YACINE/عبدالسلطان ياسين'),
(1770, 73, 'KESSIRA/كسيرة', 'ABDERRAHMAN/عبد الرحمان'),
(1771, 74, 'KIROUANE/قيروان', 'FAIROUZ MOKHTARIA/فيروز مختارية'),
(1772, 75, 'MEFTAH/مفتاح', 'KHADIDJA NOUR ELHOUDA/خديجة نور الهدى'),
(1773, 76, 'MELIANI/ملياني', 'MEHDI/مهدي'),
(1774, 77, 'MLATI/ملا تي', 'Yasser bourhaneeddine/ياسر برهان الدين'),
(1775, 78, 'RAHIL/رحيل', 'ABBES/العباس'),
(1776, 79, 'ABDELHADI/عبد الهادي', 'SETTI/ستي'),
(1777, 80, 'BENHADJELA/بن حجلة', 'LAOUNI/العوني'),
(1778, 81, 'BOUKOUIR/بوقوير', 'GHANIA HAYET/غنية حيات'),
(1779, 82, 'BOUTELDJA/بوثلجة', 'MOHAMMED ELAMINE MUSTAPHAA/محمد الامين مصطفى'),
(1780, 83, 'DJELLAL/جلال', 'HABIB ALLAH MOHAMMED/حبيب الله محمد'),
(1781, 84, 'DJEROUANE/جروان', 'SARRA/سارة'),
(1782, 85, 'EL HAMMAR/الحمار', 'IBRAHIM EL KHALIL/إبراهيم الخليل'),
(1783, 86, 'ELOUISSI/الويسي', 'MAROUA/مروة'),
(1784, 87, 'FAKHA/فاخة', 'MIRA/ميرة'),
(1785, 88, 'IKKACHE/يقاش', 'MOHAMED AMINE/محمد الأمين'),
(1786, 89, 'KELBOUZA/قلبوزة', 'KAOUTHER/كوثر'),
(1787, 90, 'KHALDI/خالدي', 'FAROUK/فاروق'),
(1788, 91, 'KORICHI/قريشي', 'BOUCHRA/بشرى'),
(1789, 92, 'KRABCHI/كرابشي', 'AMINA/أمينة'),
(1790, 93, 'LACHEBI/العشبي', 'ABDERRAHMANE/عبد الرحمن'),
(1791, 94, 'LAOUFI/العوفي', 'BOUCHERA/بشرى'),
(1792, 95, 'MEDJENOUNE/مجنون', 'AHMED AYOUB/أحمد أيوب'),
(1793, 96, 'MESSAOUDI/مسعودي', 'KAOUTHER MINAT ELLAH/كوثر منة الله'),
(1794, 97, 'MESTOUR/مستور', 'FATIMA ZOHRA/فطيمة زهرة'),
(1795, 98, 'MEZOURI/مزوري', 'AMINA/امينة'),
(1796, 99, 'MOHAMED-BENKADA/محمد بن قادة', 'HADJIRA/هجيرة'),
(1797, 100, 'MOKHEFI/مخفي', 'MOHAMED DAHMANE/محمد دحمان'),
(1798, 101, 'MOULAI ALI/مولاي علي', 'ABDELDJALIL/عبد الجليل'),
(1799, 102, 'MOUSSADEK/مصدق', 'OUSSAMA ABDUL WADUD/اسامة عبد الودود'),
(1800, 103, 'SAAD/ساعد', 'MOHAMED HICHEM/محمد هشام'),
(1801, 104, 'SAF/صاف', 'MOHAMED ILIES/محمد إلياس'),
(1802, 105, 'SAIB/سايب', 'KAHINA/كاهنة'),
(1803, 106, 'SIDHOUM/سيدهم', 'KHADIDJA EL KOBRA BATOUL/خديجة الكبرى باتول'),
(1804, 107, 'SOLTANI/سلطاني', 'SID AHMED/سيد أحمد'),
(1805, 108, 'SOUAG/صواق', 'SARRA/سارة'),
(1806, 109, 'TAIEB BOUANANI/طيب بوعناني', 'CHAIMAA/شيماء'),
(1807, 110, 'YAHIA/يحي', 'ABDELKADER/عبدالقادر'),
(1808, 111, 'YKHLEF/يخلف', 'RAHMA/رحمة'),
(1809, 112, 'ZAGANE/زعقان', 'MOHAMMED MOUNIR/محمد منير'),
(1810, 113, 'ZELLAGUI/زلاقي', 'SOUMIA NOUR ELHOUDA/سومية نور الهدى');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1813;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
