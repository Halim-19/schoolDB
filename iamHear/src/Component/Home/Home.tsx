import React, { useState } from "react";
import * as XLSX from "xlsx";
import axios from "axios";
import "./home.css";

type ExcelData = {
  Matricule: number;
  Nom: string;
  Prenom: string;
  Absent: string;
};

const ExcelDisplay: React.FC = () => {
  const [data, setData] = useState<ExcelData[]>([]);

  const handleFileUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (e) => {
      const binaryData = new Uint8Array(e.target?.result as ArrayBuffer);
      const workbook = XLSX.read(binaryData, { type: "array" });
      const sheetName = workbook.SheetNames[0];
      const worksheet = workbook.Sheets[sheetName];

      // Parse JSON data and sanitize keys
      const jsonData = XLSX.utils.sheet_to_json(worksheet).map((row: any) => ({
        Matricule: row["Matricule"],
        Nom: row["Nom "] || row["Nom"],
        Prenom: row["Prenom"],
        Absent: row["Absent"] || "",
      })) as ExcelData[];

      setData(jsonData);
      console.log(jsonData);
    };
    reader.readAsArrayBuffer(file);
  };

  const handleUploadToDatabase = async () => {
    try {
      await axios.post("http://localhost:5000/api/students", data);
      alert("Data uploaded to database successfully");
    } catch (error) {
      console.error("Error uploading data", error);
      alert("Failed to upload data");
    }
  };

  return (
    <div className="containerr">
      <input type="file" accept=".xlsx, .xls" onChange={handleFileUpload} />
      <button onClick={handleUploadToDatabase} disabled={data.length === 0}>
        Upload to Database
      </button>
      <div className="tableContainer">
        {data.length > 0 && (
          <table>
            <thead>
              <tr>
                {Object.keys(data[0]).map((key) => (
                  <th key={key}>{key}</th>
                ))}
              </tr>
            </thead>
            <tbody>
              {data.map((row, index) => (
                <tr key={index}>
                  {Object.values(row).map((value, i) => (
                    <td key={i}>{value}</td>
                  ))}
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
};

export default ExcelDisplay;
