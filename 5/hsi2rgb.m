function f = hsi2rgb(h)


hVar = h(:, :, 1) * 2 * pi;
sVar = h(:, :, 2);
iVar = h(:, :, 3);

% conversion
R = zeros(size(h, 1), size(h, 2));
G = zeros(size(h, 1), size(h, 2));
B = zeros(size(h, 1), size(h, 2));

% next level
idx = find( (0 <= hVar) & (hVar < 2*pi/3));
B(idx) = iVar(idx) .* (1 - sVar(idx));
R(idx) = iVar(idx) .* (1 + sVar(idx) .* cos(hVar(idx)) ./ cos(pi/3 - hVar(idx)));
G(idx) = 3*iVar(idx) - (R(idx) + B(idx));

% next level
idx = find( (2*pi/3 <= hVar) & (hVar < 4*pi/3) );
R(idx) = iVar(idx) .* (1 - sVar(idx));
G(idx) = iVar(idx) .* (1 + sVar(idx) .* cos(hVar(idx) - 2*pi/3) ./ cos(pi - hVar(idx)));
B(idx) = 3*iVar(idx) - (R(idx) + G(idx));

% BR sector.
idx = find( (4*pi/3 <= hVar) & (hVar <= 2*pi));
G(idx) = iVar(idx) .* (1 - sVar(idx));
B(idx) = iVar(idx) .* (1 + sVar(idx) .* cos(hVar(idx) - 4*pi/3) ./ cos(5*pi/3 - hVar(idx)));
R(idx) = 3*iVar(idx) - (G(idx) + B(idx));

% result
f = cat(3, R, G, B);
f = max(min(f, 1), 0);