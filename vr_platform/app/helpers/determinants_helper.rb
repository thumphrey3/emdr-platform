module DeterminantsHelper
  def education_list
    [
      ["No schooling completed", "No schooling completed"],
      ["Nursery school to 8th grade", "Nursery school to 8th grade"],
      ["Some high school, no diploma", "Some high school, no diploma"],
      ["High school graduate, diploma or the equivalent (GED)", "High school graduate, diploma or the equivalent (GED)"],
      ["Some college credit, no degree", "Some college credit, no degree"],
      ["Trade/technical/vocational training", "Trade/technical/vocational training"],
      ["Associate degree", "Associate degree"],
      ["Bachelor’s degree", "Bachelor's degree"],
      ["Master’s degree", "Master's degree"],
      ["Professional degree", "Professional degree"],
      ["Doctorate degree", "Doctorate degree"]
    ]
  end

  def ace_questions

  [  
    "Did a parent or other adult in the household often or very often...Swear at you, insult you, put you down, or humiliate you? or Act in a way that made you afraid that you might be physically hurt?", 

    "Did a parent or other adult in the household often or very often...Push, grab, slap, or throw something at you? or Ever hit you so hard that you had marks or were injured?",

    "Did an adult or person at least 5 years older than you ever...Touch or fondle you or have you touch their body in a sexual way? or Attempt or actually have oral, anal, or vaginal intercourse with you?",

    "Did you often or very often feel that...No one in your family loved you or thought you were important or special? or Your family didn’t look out for each other, feel close to each other, or support each other?", 

    "Did you often or very often feel that...You didn’t have enough to eat, had to wear dirty clothes, and had no one to protect you? or Your parents were too drunk or high to take care of you or take you to the doctor if you needed it?",

    "Were your parents ever separated or divorced?", 
                        
    "Was your mother or stepmother: Often or very often pushed, grabbed, slapped, or had something thrown at her? or Sometimes, often, or very often kicked, bitten, hit with a fist, or hit with something hard? or Ever repeatedly hit at least a few minutes or threatened with a gun or knife?",

    "Did you live with anyone who was a problem drinker or alcoholic or who used street drugs?", 
                                                                                        
    "Was a household member depressed or mentally ill, or did a household member attempt suicide?", 

    "Did a household member go to prison?" 
  ]
  end

  def ace_list
    [
      "Experienced adult in household often swearing, insulting, humiliating them",
      "Experienced adult in household often physically abusing them",
      "Experienced sexual abuse as a child",
      "Experienced lack of support from family growing up",
      "Experienced neglect/deprivation (food, clothing, protection)",
      "Experienced parents' separation/divorce",
      "Observed domestic abuse of mother/step-mother",
      "Lived with someone who had drug/alcohol problems",
      "Lived with household member who was mentally ill/depressed",
      "Member of household went to prison"
    ]
  end
end
