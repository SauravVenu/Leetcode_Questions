class Solution {
public:
    int missingNumber(vector<int>& nums) {
        for(int i=0;i<=nums.size();i++){   // here i is not an index it is the possible numbers
            bool found = false;
            for(int j=0;j<nums.size();j++){
                if(nums[j]==i){
                    found = true;
                    break;
                }
            }
            if(found==false){
                return i;
            }  
        }
        return -1;
    }
};