# DDRM
This provides the implementation of our paper "DDRM: A Continual Frequency Estimation Mechanism with Local Differential Privacy", together with four datasets for testing.
Paper link: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9782510
# Abstract
Many applications rely on continual data collection to provide real-time information services, e.g., real-time road traffic forecasts. However, the collection of original data brings risks to user privacy. Recently, local differential privacy (LDP) has emerged as a private data collection framework for mass population. However, for continual data collection, existing LDP schemes, e.g., those employing the memoization technique, are known to have privacy leakage on data change points over time. In this paper, we propose a new scheme with stronger privacy guarantee for continual frequency estimation under LDP, namely, Dynamic Difference Report Mechanism (DDRM). In DDRM, we introduce difference trees to capture the data changes over time, which well addresses possible privacy leakage on data change points. As for the utility enhancement, DDRM exploits the common case of no data change in time series and thereby suppresses the consumption of privacy budget in such cases. Meanwhile, an optimal privacy budget allocation scheme is proposed to encourage users to report more data for better estimation accuracy. By both theoretical analysis and experimental evaluations, we show DDRM achieves highly accurate frequency estimation in real time.
# Description (How to run)
## Code
1. Under DDRM, the function: DDRM/main.m, is run to achieve estimation errors over time-series data. Three variables, namely, T (time horizon 16 or 32), D (dataset) and  K (optimal k value under different \epsilon), need be set by uncommenting the corresponding commands.
2. Under OptimalK, the function: OptimalK/main.m, is run to verify the optimal k value. Four variables, i.e., N (the number of users), pc (change rate), f (the initial frequency) and T (time horizon), could be set.
## Dataset
1. stock_16.txt (real dataset with T=16)
2. stock_32.txt (real dataset with T=32)
3. syn_data16.txt (synthetic dataset with T=16)
4. syn_data32.txt (synthetic dataset with T=32)
# Contact
Please feel free to send email to qiaoxue1992@gmail.com for any question.
