Record
- Category_id
- Doctor Name
- Practice Name
- Website
- date
- phone
- medications
- medication notes
- comments
- belongs_to :category

Category
- Primary Doc
- ER/Hospital
- Physical Therapist
- Occupational Therapist
- Psychiatrist
- Surgery
- Neurologist
- Heart Doc
- Blood Doc
- Minor Falls???
- has_many :records