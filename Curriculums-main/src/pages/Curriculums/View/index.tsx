import React, { useEffect, useState } from "react";
import CurriculumCard from "../../../components/curriculums/CurriculumCard";
import axios from 'axios';

export default function CurriculumsView() {
    const [cvs, setCvs] = useState([]);
    const [searchTerm, setSearchTerm] = useState("");

    useEffect(() => {
        getCvs();
    }, []);

    async function getCvs() {
        const response = await axios.get('http://localhost:5000/curriculum/ver');
        setCvs(response.data.result);
    }

    async function handleDelete(id) {
        const response = await axios.delete(`http://localhost:5000/curriculum/eliminar/${id}`);
        getCvs();
    }

    const filteredCvs = cvs.filter((cv) =>
        cv.nombre.toLowerCase().includes(searchTerm.toLowerCase())
    );

    return (
        <div className='mt-28 text-center'>
            <input
            type="text"
            placeholder="Buscar curriculum"
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            className="px-4 py-2 mb-4 border rounded-md border-green-800 w-64 mx-auto focus:outline-none focus:border-green-500"
        />
            {filteredCvs.map((cv, index) => (
                <CurriculumCard key={cv.id || index} cv={cv} handleDelete={handleDelete} />
            ))}
        </div>
    );
}
