# Project Notes
## Research Questions:
asjdhaskjdhakjsdaksdj
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
- `<characteristic>` : used for how female characters are valued, seen, interpretted by narrator or other characters
   - must contain a `value` attribute
   - maybe containing a `type` attribute as well with values of `"physical"` and `"nonphysical"`?
      - attribute values for `value` : 
         - `"beauty"` : used for phrases like "loved by every one who looked at her", etc
         - add more values here that you discover 
- `<autonomy>` : used for female actions or inactions
   - must contain a `type` attribute
      - `"controlled"` : used for instanced where a female character lacks autonomy and is subjugated in reference to another
      - `"free"` : female character acts and makes decisions in her own thoughts and free will
   - `level` attribute
      - `"male_savior"` : any instance where a female character's autonomy is taken over by a male savior or prince
      - `"damsel"` : female character is depicted as being a "damsel in distress", dramatization of her need to be saved, of being helpless and unable to save herself
      - `"evil"` : if a female character's actions (probably will be a free action) is seen as being evil, or if this action depicts her as evil
- `<villanization>` : used for the depiction of female characters as being evil
   - `cause` attribute
      - `"competition"` 
      - `"jealousy"`
      - `"revenge`"
   - `gender` attribute
      - `"male"` : if the female character's tension is caused by a male character
      - `"female"` : if the female character's tenison is caused by a female character

