class Solution {
public:
    int minPartitions(string n) {
        int best =0;
        for(int i = 0;i<n.size();i++) {
            best = max(best, n[i]-'0');
        }
        return best;
    }
};
