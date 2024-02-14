import React, { useEffect, useRef } from 'react';
import gsap from 'gsap';

const AnimatedBanner: React.FC = () => {
  const bannerRef = useRef<HTMLDivElement>(null);
  const contentRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const banner = bannerRef.current;
    const content = contentRef.current;

    if (banner && content) {
      gsap.fromTo(
        banner,
        { y: '100%', opacity: 0 },
        { y: 0, opacity: 1, duration: 1, ease: 'power2.out' }
      );

      gsap.fromTo(
        content,
        { opacity: 0, y: 20 },
        { opacity: 1, y: 0, duration: 0.5, delay: 0.5 }
      );
    }
  }, []);

  return (
        <div
          ref={bannerRef}
          className="fixed bottom-0 left-0 right-0 bg-[#0a7764] text-white p-4 text-center"
        >
          <div ref={contentRef}>
            <h2 className="text-2xl font-semibold mb-2">¡Bienvenido!</h2>
            <p className="text-sm">Con este módulo podrás crear y manejar tu(s) propio(s) CV en cuestión de minutos.</p>
      </div>
    </div>
  );
};

export default AnimatedBanner;
