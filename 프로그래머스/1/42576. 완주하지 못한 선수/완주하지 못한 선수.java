import java.util.*;
class Solution {
    public String solution(String[] participant, String[] completion) {
        String answer = "";
        Arrays.sort(participant);
		Arrays.sort(completion);	
        int i = 0; // 인덱스 확인 변수
		for (i = 0; i < completion.length; i++) {
			if(!completion[i].equals(participant[i])) { // 두배열의 값이 다르면
				break;
			}
		}
		answer = participant[i]; // 변수에 배열값 저장
        return answer;
    }
}