import React, { useEffect, useRef } from 'react';
import gsap from 'gsap';

const LoadingPage: React.FC<{ onAnimationComplete: () => void }> = ({ onAnimationComplete }) => {
  const bannerRef = useRef(null);

  useEffect(() => {
    const timeline = gsap.timeline({
      onComplete: onAnimationComplete,
    });

    timeline.from(bannerRef.current, { opacity: 0, duration: 1, y: 50 })
            .to(bannerRef.current, { opacity: 1, duration: 2, delay: 1 })
            .to(bannerRef.current, { opacity: 0, duration: 1, delay: 1 });
  }, [onAnimationComplete]);

  return (
    <div className="">
      <div className="mt-1 isolate px-6 lg:px-8 ">
        <div className="mx-auto max-w-2xl py-10 lg:py-20" ref={bannerRef}>
          <img
            src="https://i0.wp.com/utd.edu.mx/wp-content/uploads/2022/07/LOGO-UTD-NUEVO-2022_solo-01.png?fit=1024%2C387&ssl=1"
            alt="Logo UTD"
            style={{ width: '100%', height: 'auto' }}
          />
        </div>
      </div>
    </div>
  );
};

export default LoadingPage;
