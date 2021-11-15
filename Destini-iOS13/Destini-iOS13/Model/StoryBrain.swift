//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "당신의 차는 휴대전화 수신이 되지 않는 한가운데의 구불구불한 길에서 타이어를 날렸습니다. 히치하이킹을 하기로 결정합니다. 녹슨 픽업 트럭이 당신 옆에 멈춥니다. 영혼 없는 눈을 가진 챙이 넓은 모자를 쓴 남자가 당신을 위해 조수석 문을 열고 묻습니다.",
            choice1: "들어가겠습니다. 도와주셔서 감사합니다!", choice1Destination: 2,
            choice2: "그가 살인자인지 먼저 물어보는 게 좋을거야.", choice2Destination: 1
        ),
        Story(
            title: "질문에 당황하지 않고 천천히 고개를 끄덕인다.",
            choice1: "적어도 그는 정직합니다. 내가 들어갈게.", choice1Destination: 2,
            choice2: "잠깐, 나는 타이어를 바꿀 줄 알아.", choice2Destination: 3
        ),
        Story(
            title: "당신이 운전을 시작하자 낯선 사람은 자신과 어머니의 관계에 대해 이야기하기 시작합니다. 그는 분 단위로 점점 더 화를 냅니다. 그는 당신에게 글로브 박스를 열어달라고 요청합니다. 안에는 피 묻은 칼, 잘린 두 손가락, Elton John의 카세트 테이프가 있습니다. 그는 글로브 박스에 손을 뻗습니다.",
            choice1: "나는 엘튼 존을 사랑한다! 그에게 카세트 테이프를 건네줘.", choice1Destination: 5,
            choice2: "그 사람 아니면 나야! 당신은 칼을 들고 그를 찔러.", choice2Destination: 4
        ),
        Story(
            title: "뭐라고 요? 그런 경찰 아웃! 교통 사고가 대부분의 성인 연령대에서 사고사 사망의 두 번째 주요 원인이라는 것을 알고 계셨습니까?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "난간을 부수고 아래의 들쭉날쭉한 바위를 바라보면서 당신이 타고 있는 차를 운전하는 동안 누군가를 칼로 찌르는 것이 어리석은 지혜에 대해 생각하게 됩니다.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "당신은 '오늘 밤 사랑을 느낄 수 있습니까'의 구절을 음미하면서 살인자와 유대를 맺습니다. 그는 다음 마을에서 당신을 내려줍니다. 당신이 가기 전에 그는 당신이 시체를 버릴 좋은 장소를 알고 있는지 묻습니다. 당신은 대답합니다: '부두를 보십시오.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
        
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    
    
    
    
    mutating func nextStory(userChoice: String) {
    
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination

        }
    }
}

