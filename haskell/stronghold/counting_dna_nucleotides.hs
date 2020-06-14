-- Problem
--
-- A string is simply an ordered collection of symbols selected from some alphabet and formed into a word; the length of a string is the number of symbols that it contains.
--
-- An example of a length 21 DNA string (whose alphabet contains the symbols 'A', 'C', 'G', and 'T') is "ATGCTTCAGAAAGGTCTTACG."
--
-- Given: A DNA string s of length at most 1000 nt.
--
-- Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s.
--
-- Author.: Diego S. Seabra
-- 14/06/2020

main :: IO ()

dnaString = "CCCCTCATTCGACGTTTTGCTTAGTGGTGGTGGGCATACGAGGTTTAGCATAATTTTTGTCGCATTCGAGCGGCACCGGGATCCAGACCTTGACCGGTTCATTATAAGCTACCTACCCACCATGTAAATTTGTTAGGCTCACAAACCGGCACACTGCTGTACCCATCTCGCCGTTCGAGGCTAGCATAGCAATACATGAAGCCATCATAGAAAATAGTTCTTGAGATGCGTTACTGTAAAAAGGCGACGATTTCTGAATCTGGGTTTAAGTTTGAACAACACCGGTTCTCGTGTCTCAAGCCCTTACGAGCCCCACCATATTTTTTCGTTAAGGAAGTTCCAACTGAATGATTGAAACTGGGGGCGTCTCTAATATAAATGCGACGGGAGGGAAGGTTTTACCGCATGACGCCGGGGCTTGTTCGGAAGGATGGCGGGTAGGAGCGGCGAGTTACGGATACCACACTTGACGCAACTAGCTTTGTGTGATAGGGAGACATCTAAGACACGCATAGGTATAGGATGGTAACATCGGGAATCTGCCGAGGGTGCGTCGTTACATTCTCTCATAGTTCTAGGAATGACAGGAATGTCTGATGCATATATGGATAACTACTCACCGAATGATACGGGGCCCTGTGATTGCAGGGTCAGGAGAGGCTATGGGTGAGGATGTTCTTTCCCTCCGAATCTCGGCATCTCTTAGTCCGTAGTGGACCGATGGTAGCAACACGATGAGCATGCTCAAATTCCGGATTGACAAGGTTCCTCTAGAGTACAAGTAGTCTCCGTCTCTTTAGCCGCGCCCGGAAAAGTTATCTCTTTGGGATAGAGATCAGAGAATCGAGTTGTATTAGAGAACGGGCTGTAAG"

count letter list = length ([ x | x <- list, x == letter])

aCount = count 'A' dnaString
cCount = count 'C' dnaString
gCount = count 'G' dnaString
tCount = count 'T' dnaString

result = show aCount ++ " " ++ show cCount ++ " " ++ show gCount ++ " "++ show tCount

main = print result