import {defineField, defineType} from 'sanity'

export const dogType = defineType({
    name: 'dog',
    title: 'Dog',
    type: 'document',
    fields: [
        defineField({
            name: 'name',
            type: 'string',
        }),
        defineField({
            name: 'slug',
            type: 'slug',
        }),
        defineField({
            name: 'image',
            type: 'image',
        }),
    ],
})