% 甲,乙均可以独自生存
function dx = fun2(t, x)
    % 参数设置
    % 甲, 乙的增长率或死亡率
    r1 = 0.5; r2 = 0.5;
    % 甲, 乙种群的最大数量
    N1 = 300; N2 = 500;
    % sigma1: 单位数量的乙种群(相对于N2)提供的供养甲的食物量为单位数量的甲(相对于N1)消耗的供养甲的食物量的倍数。
    % sigma2: 单位数量的甲种群(相对于N1)提供的供养乙的食物量为单位数量的乙(相对于N2)消耗的供养乙的食物量的倍数。
    sigma1 = 0.2; sigma2 = 2;
    % 注意: 当sigme1*sigme2 > 1时, 微分方程是不稳定的, 此时得到的y可能呈指数级增长
    dx = zeros(2, 1);
    dx(1) = r1*x(1) * (1 - x(1)/N1 + sigma2*x(2)/N2);
    dx(2) = r2*x(2) * (1 - x(2)/N2 + sigma1*x(1)/N1);
end
