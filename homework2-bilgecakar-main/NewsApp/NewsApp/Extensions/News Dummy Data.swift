//
//  News Dummy Data.swift
//  NewsApp
//
//  Created by Bilge Çakar on 17.09.2022.
//

import Foundation

//News dummy data
extension News {
    static let dummyData : [News] = [
        .init(
            newsTitle: "Stocks fall after FedEx warns of global recession",
            newsDescription: "US stocks fell on Friday after FedEx served investors a brutal pre-earnings announcement about the state of the global economy.The Dow closed down 140 points, or 0.5%, lower. The S&P 500 fell 0.7% and the Nasdaq Composite was down 0.9%.All three major indexes logged their fourth losing week out of the last five. The Dow dropped 4.1% for the week, and the S&P 500 and Nasdaq dropped 5% and 5.5%, respectively...",
            newsImage: "NewsOne",
            newsUrl: "https://edition.cnn.com/2022/09/16/investing/dow-stock-market-today/index.html",
            newsCategory: "Business",
            newsDate: "September 16, 2022",
            newsWriter: "Nicole Goodkind, CNN Business"
        ),
        .init(
            newsTitle: "Zoom hit by brief outage",
            newsDescription: "Zoom was hit by a brief outage Thursday morning, potentially disrupting some of the many users who have come to rely on it for meetings during the pandemic. There were tens of thousands of user reports of issues with Zoom starting a little bit before 11 a.m. ET, according to data from outage-tracking site Down Detector. By 11:30 a.m., however, the reports of issues had declined significantly. We are aware of issues currently impacting Zoom, the company tweeted Thursday morning. Our engineering team is investigating this matter. According to the company's status page, the issue was identified at 11:30 a.m. ET and resolved at 11:37 a.m ET.By noon ET, the company tweeted that the short-lived outage had been resolved. Everything should be working properly now! We are continuing to monitor the situation. Thank you all for your patience and our sincere apologies for the disruption, Zoom said.",
            newsImage: "NewsTwo",
            newsUrl: "https://edition.cnn.com/2022/09/15/tech/zoom-outage/index.html",
            newsCategory: "Technology",
            newsDate: "September 15, 2022",
            newsWriter: "Catherine Thorbecke, CNN Business"
        ),
        .init(
            newsTitle: "How to adapt Jane Austen -- and why it's so hard to get right",
            newsDescription: "It's an act braver than marrying for love, riskier than running away with Mr. Wickham and plainer than Anne Elliot to adapt Jane Austen's beloved, essential books for the screen.And yet, filmmakers keep trying.There are the modern retellings -- Clueless, which dropped its Emma Woodhouse in Beverly Hills and dressed her in Alaïa, and this summer's Fire Island, a version of Pride and Prejudice with gay protagonists. There are those that stick closely to the text, like Whit Stillman's uproarious Love and Friendship and the 1995 Pride and Prejudice miniseries that turned a generation of viewers into Colin Firth-as-Darcy diehards. Make a so-so adaptation and you risk the wrath of Austen's legions of readers: Take Persuasion, which caused a massive stink before it was even released in July when its trailer included snippets of new, modernized dialogue that chopped down Austen's original text and Fleabag-esque camera-mugging. It's an unenviable task, condensing volumes' worth of social critique, sparkling dialogue and characters so beloved that they've inspired an entire archetype of love interest. But often, these films succeed and even reveal new layers to Austen's canonical works. At the very least, they inspire debate among her many readers.",
            newsImage: "NewsThree",
            newsUrl: "https://edition.cnn.com/2022/08/07/entertainment/jane-austen-adaptations-persuasion-fire-island-cec/index.html",
            newsCategory: "Entertainment",
            newsDate: "August 7, 2022",
            newsWriter: "Scottie Andrew, CNN"
        ),
        .init(
            newsTitle: "NBPA executive director calls for Suns owner Robert Sarver to be banned for life",
            newsDescription: "The calls for the NBA to eject Phoenix Suns and Mercury owner Robert Sarver keep getting louder. Three days after the NBA released a report detailing the billionaire's workplace misconduct and disciplining him with a one-year suspension and $10 million fine, National Basketball Players Association executive director Tamika Tremaglio said the players union is calling for Sarver to banned from the league for life. Tremaglio had previously released a statement calling Sarver's reported actions horrible and saying he should never hold a managerial position in the NBA again. She expanded on those thoughts in an interview with ESPN's NBA Today on Friday: We are absolutely calling for [a lifetime ban]. We do not want him to be in a position where he is managing or engaging with individuals who are engaging with our players or our players themselves. We are absolutely clear from the findings that are in the report that we do not want him to be in that position.",
            newsImage: "NewsFour",
            newsUrl: "https://sports.yahoo.com/nbpa-executive-director-calls-for-league-to-ban-suns-owner-robert-sarver-for-life-224013164.html",
            newsCategory: "Sports",
            newsDate: "September 17, 2022 ",
            newsWriter: "Jack Baer, Yahoo"
        ),
        
            .init(
                newsTitle: "NASA requests proposals for 2nd moon lander for Artemis astronauts",
                newsDescription: "NASA is asking private industry to come up with ideas for another astronaut moon lander.The space agency is working to establish a long-term human presence on and around the moon by the end of the 2020s, via a program called Artemis. In 2021, NASA announced that it had selected SpaceX's Starship as the lander for the program's first crewed surface mission, Artemis 3, which is scheduled to touch down near the lunar south pole in 2025 or 2026.In March of this year, agency officials said that they planned to encourage the development of a second crewed lander for Artemis, to provide redundancy and resilience for the program. That plan became official today (Sept. 16), when NASA issued a call for proposals from private companies.",
                newsImage: "NewsFive",
                newsUrl: "https://www.space.com/nasa-artemis-astronauts-second-moon-lander",
                newsCategory: "Science",
                newsDate: "September 17, 2022",
                newsWriter: "Mike Wall, Space"
            ),
            .init(
                newsTitle: "Covid-19 in seniors linked to increased Alzheimer’s risk, study finds",
                newsDescription: "A study using the electronic health records of more than 6 million Americans over age 65 found those who had covid-19 ran a greater risk of receiving a new diagnosis of Alzheimer’s disease within a year. The study, led by researchers at Case Western Reserve University School of Medicine and published in the Journal of Alzheimer’s Disease, does not show that covid-19 causes Alzheimer’s, but adds to a growing body of work suggesting links between the two.The results suggest researchers should be tracking older patients who recover from covid to see if they go on to show signs of memory loss, declining brain function or Alzheimer’s disease. The study found that for every 1,000 seniors with covid-19, seven will be diagnosed with Alzheimer’s within a year, slightly above the five-in-a-thousand diagnosis rate for seniors who did not have covid.",
                newsImage: "NewsSix",
                newsUrl: "https://www.washingtonpost.com/health/2022/09/15/covid-alzheimers-disease-case-western-reserve/",
                newsCategory: "Health",
                newsDate: "September 15, 2022",
                newsWriter: "Mark Johnson, Washington Post"
            ),
            .init(
                newsTitle: "Goldman Cuts US Growth Forecast for 2023 After Rate Path Change",
                newsDescription: "It's an act braver than marrying for love, riskier than running away with Mr. Wickham and plainer than Anne Elliot to adapt Jane Austen's beloved, essential books for the screen.And yet, filmmakers keep trying.There are the modern retellings -- Clueless, which dropped its Emma Woodhouse in Beverly Hills and dressed her in Alaïa, and this summer's Fire Island, a version of Pride and Prejudice with gay protagonists. There are those that stick closely to the text, like Whit Stillman's uproarious Love and Friendship and the 1995 Pride and Prejudice miniseries that turned a generation of viewers into Colin Firth-as-Darcy diehards. Make a so-so adaptation and you risk the wrath of Austen's legions of readers: Take Persuasion, which caused a massive stink before it was even released in July when its trailer included snippets of new, modernized dialogue that chopped down Austen's original text and Fleabag-esque camera-mugging. It's an unenviable task, condensing volumes' worth of social critique, sparkling dialogue and characters so beloved that they've inspired an entire archetype of love interest. But often, these films succeed and even reveal new layers to Austen's canonical works. At the very least, they inspire debate among her many readers.",
                newsImage: "NewsSeven",
                newsUrl: "https://www.bloomberg.com/news/articles/2022-09-17/goldman-cuts-us-growth-forecast-for-2023-after-rate-path-change",
                newsCategory: "Business",
                newsDate: "September 18, 2022",
                newsWriter: "Joanna Ossinger, Bloomberg"
            ),
            .init(
                newsTitle: "LastPass was hacked, but it says no user data was compromised",
                newsDescription: "In August, LastPass had admitted that an unauthorized party gained entry into its system. Any news about a password manager getting hacked can be alarming, but the company is now reassuring its users that their logins and other information weren't compromised in the event.In his latest update about the incident, LastPass CEO Karim Toubba said that the company's investigation with cybersecurity firm Mandiant has revealed that the bad actor had internal access to its systems for four days. They were able to steal some of the password manager's source code and technical information, but their access was limited to the service's development environment that isn't connected to customers' data and encrypted vaults. Further, Toubba pointed out that LastPass has no access to users' master passwords, which are needed to decrypt their vaults.",
                newsImage: "NewsEight",
                newsUrl: "https://www.engadget.com/lastpass-hacked-no-user-data-was-compromised-064640557.html",
                newsCategory: "Technology",
                newsDate: "September 17, 2022 ",
                newsWriter: "M. Moon, Endgadget"
            ),
    ]
}
