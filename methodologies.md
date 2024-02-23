# Project Notes
## Research Questions:

## Grimm Fairytales:
- **Ava:** Rapunzel
- **Briana:** Little Red-Cap (Red Riding Hood)
- **Teagan:** (Little) Briar-Rose (Sleeping Beauty)
- **Vanessa:** Little Snow-white (Snow White)
- **Harper:** The Singing, Springing Lark (very similar to Beauty and the Beast)
## Markup Strategy:
**Structural:**
- `<story>` = root element
- `<title>` = contains title text for fairytale
- `<p>` = contains paragraphs, or text separated by two new lines
-  `<quote>` = contains any text nested within quotations `""`, will most likely be dialogue. Be sure to deleate quotations when adding the `<quote>` element.
   - to find all the quotes use the Regex expression: `“(.+?)”` . Find all and make sure Dot matches all is checked. Replace with `<quote>\1</quote>`

**Analytical:** 
- `<characteristic>`
   - Attributes: 
      - `char_type = "physical"` or `"nonphysical"`
      - `depiction = "beauty"` (praising looks in words like beauty, pretty, attractiveness) `"naivity"` (unsure, unaware) `"innocent"` (sweet, cute, harmless, pure, soft) `"maternal"` (motherly) `"emotional"` (crying, lots of emotion) `"clever"` (smart, intelleigent) `"secluded"` (alone, lonely) `"protective"` (looking out for someone) `"brave"` (fearless)
      - `age = "young"` or `"old"`
      - `gender = "male"` or `"female"`
 
- `<adjective>` 
- ONE or TWO Words
   - wrap around an adjective used for describing a character, such as "the `<adjective>innocent<adjective/>` girl"
   - `gender = "male" or "female"`
     
- `<autonomy>`
   - Attributes
      - `auto_type = "controlled"` or `"free"`
      - `level = "male_savior"` or "damsel" or "evil" or "religious" or "socetietal" or "heroin" - add more here that you discover
         - `"male_savior"` : any instance where a female character's autonomy is taken over by a male savior or prince
         - `"damsel"` : female character is depicted as being a "damsel in distress", dramatization of her need to be saved, of being helpless and unable to save herself
         - `"evil"` : if a female character's actions (probably will be a free action) is seen as being evil, or if this action depicts her as evil
         - god/religion
         - societal, expectations
         - heroin
      - `gender = "male" or "female"`
- `<villanization>` 
   - `cause =`
      - `"competition"` 
      - `"jealousy"`
      - `"revenge"`
      - `"unspecificied"`
      - sex
   - `gender` =
      - `"male"` 
      - `"female"` 
- `<menstruation>`
   -  `motif = "blood" or "colorRed"` - add more here that you discover
    - any other attributes that should be added here???




