Symfony – The Ultimate Guide
======================

*Proudly written with love by [Daniel Ribeiro](https://github.com/drgomesp).*

**Welcome!** If you are reading this, you're probably a programmer looking to learn or improve your skills on the most 
incredible PHP framework of all times: [Symfony](http://symfony.com). I'll tell you what: you're on the right place, mate! 
Now, I have a warning for you: be prepared for lots, I mean *lots* of reading — after all, reading is one of the best 
ways to learn, right?

## Table of Contents

1. [Introduction](#introduction)

### Introduction

Not let's start with the basic – if you already work with Symfony, you can easily skip this chapter: Symfony is a both 
a full-stack framework and a set of standalone and reusable components. That means you can start working on an application
using the full-stack version – called [Symfony Standard Edition](https://github.com/symfony/symfony-standard/) – or create 
your own framework layer on top of its components. On this guide I will focus on the full-stack version, but you can expect
to learn a lot of important concepts to be able to write a decoupled application, meaning that the framework will be just
another tool to help you achieve your goal faster while not blocking you or preventing you to move on if you need to.

To create a new application on top of the standard edition, all you need to do is run the following command – make sure 
you have [Composer](https://getcomposer.org/) [installed globally](https://getcomposer.org/doc/00-intro.md#globally) 
before you run it:

```bash
composer create-project symfony/framework-standard-edition path/to/install
```

**NOTE**: This guide will always be upgraded to the latest Symfony version.
