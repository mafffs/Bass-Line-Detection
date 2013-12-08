function x_zeropadded = zeropadding(x, targetLength)
% x_zeropadded = zeropadding(x, targetLength)
%
% Zero-pads the signal x if it is shorter than the target length.
%
% Arguments:
%   x            = signal to be zero-padded (column vector/matrix)
%   targetLength = length after zero padding
%
% Output:
%   x_zerpadded  = the zero-padded input vector (column vector/matrix)

    [m,n] = size(x);
    if m < targetLength
        zerosToAdd = zeros(targetLength-m,n);   %build zeros
        x_zeropadded = [x;zerosToAdd];           %zeropadding
    else
        x_zeropadded=x;
    end
end