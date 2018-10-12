function X_magnitude=getFT(segment)
    N = length(segment);
    for m=0:1:fix(N/2)
        tmp_real = 0;
        tmp_img=0;
        for k=0:1:N-1
            tmp_real = tmp_real + segment(k+1)*cos(2*pi*k*m/N);
            tmp_img = tmp_img - segment(k+1)*sin(2*pi*k*m/N);
        end
        X_real(m+1) = tmp_real;
        X_img(m+1) = tmp_img;
        X_magnitude(m+1) = sqrt(X_real(m+1).^2 + X_img(m+1).^2);
    end
end