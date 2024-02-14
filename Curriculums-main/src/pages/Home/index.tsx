import React, { useState } from 'react';

import AnimatedBanner from './AnimatedBanner';

import LoadingPage from './LoadingPage';
import { Link } from 'react-router-dom';

const Home: React.FC = () => {
  const [isLoading, setIsLoading] = useState(true);

  const handleAnimationComplete = () => {
    setIsLoading(false);
  };

  return (
    <div>
      {isLoading ? (
        <LoadingPage onAnimationComplete={handleAnimationComplete} />
      ) : (
        <div className="">
          <div className="relative isolate px-6 pt-14 lg:px-8 ">
            <div className="mx-auto max-w-2xl py-10 lg:py-20">
              <div className="text-center">
                <h1 className="text-4xl font-bold tracking-tight text-[#0a7764] sm:text-6xl">Crea tu propio curriculum</h1>
                <div className="mt-10 flex items-center justify-center gap-x-6">
                  <Link to="/curriculums/create" className="rounded-md bg-[#19947b] px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:brightness-90 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Crear mi curriculum</Link>
                  <Link to='/curriculums' className="text-sm font-semibold leading-6 text-gray-900">Ver mis curriculums <span aria-hidden="true">→</span></Link>
                </div>
              </div>
            </div>
          </div>
        </div>
      )}
      <AnimatedBanner />
    </div>
  );
};

export default Home;
