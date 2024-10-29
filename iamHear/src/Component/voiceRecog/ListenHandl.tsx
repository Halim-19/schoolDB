import React, { useState, useEffect } from "react";

interface Student {
  name: number;
  status: "yes" | "no";
}

const AttendanceChecker: React.FC = () => {
  const [students, setStudents] = useState<Student[]>([
    { name: 1, status: "no" },
    { name: 2, status: "no" },
    { name: 3, status: "no" },
  ]);

  const [message, setMessage] = useState<string>(
    "Click anywhere to start voice recognition"
  );

  // Mapping for word numbers to numeric values
  const numberMapping: Record<string, number> = {
    one: 1,
    two: 2,
    three: 3,
  };

  useEffect(() => {
    const SpeechRecognition =
      (window as any).SpeechRecognition ||
      (window as any).webkitSpeechRecognition;
    const recognition = new SpeechRecognition();

    recognition.continuous = false;
    recognition.lang = "en-US";
    recognition.interimResults = false;
    recognition.maxAlternatives = 1;

    recognition.onresult = (event: any) => {
      const spokenPhrase = event.results[0][0].transcript.toLowerCase().trim();
      console.log(`Spoken phrase received: "${spokenPhrase}"`);
      handleVoiceCommand(spokenPhrase);
    };

    recognition.onerror = (event: any) => {
      setMessage(`Error occurred: ${event.error}`);
    };

    document.body.onclick = () => {
      recognition.start();
      setMessage("Listening...");
    };
  }, []);

  const handleVoiceCommand = (spokenPhrase: string) => {
    const words = spokenPhrase.split(" ");
    console.log(`Split words: ${JSON.stringify(words)}`);

    if (words.length === 2) {
      const [studentName, status] = words;
      console.log(`Student number: "${studentName}", Status: "${status}"`);
      updateStudentStatus(studentName, status);
    } else {
      setMessage("Unrecognized command");
    }
  };

  const updateStudentStatus = (name: string, status: string) => {
    // Convert the word to a number
    const studentNameNumber = numberMapping[name];

    console.log(`Parsed student number: ${studentNameNumber}`);

    if (studentNameNumber !== undefined) {
      const newStatus: "yes" | "no" | undefined =
        status === "yes" ? "yes" : status === "no" ? "no" : undefined;

      if (newStatus) {
        const updatedStudents = students.map((student) => {
          if (student.name === studentNameNumber) {
            return { ...student, status: newStatus }; // Type-safe status update
          }
          return student;
        });

        setStudents(updatedStudents);
        setMessage(`${studentNameNumber} marked as ${newStatus}`);
      } else {
        setMessage("Invalid status. Please use 'yes' or 'no'.");
      }
    } else {
      setMessage("Invalid student number. Please provide a valid number.");
    }
  };

  return (
    <div>
      <h2>Student Attendance Checker</h2>
      <p>{message}</p>
      <ul>
        {students.map((student, index) => (
          <li key={index}>
            {student.name}: {student.status}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default AttendanceChecker;
