local M = {}

-- get number of words
-- function M.getWords()
--   if vim.bo.filetype == "text" or vim.bo.filetype == "markdown" then
--     if vim.fn.wordcount().visual_words == 1 then
--       return tostring(vim.fn.wordcount().visual_words) .. " word"
--     elseif not (vim.fn.wordcount().visual_words == nil) then
--       return tostring(vim.fn.wordcount().visual_words) .. " words"
--     else
--       return tostring(vim.fn.wordcount().words) .. " words"
--     end
--   else
--     return ""
--   end
-- end

-- get number of words and characters
function M.getWords()
  if vim.bo.filetype == "text" or vim.bo.filetype == "markdown" then
    local wordcount = vim.fn.wordcount()
    local words = wordcount.visual_words or wordcount.words
    local chars = wordcount.visual_chars or wordcount.chars
    local wordStr = tostring(words) .. (words == 1 and " word" or " words")
    local charStr = tostring(chars) .. (chars == 1 and " character" or " characters")
    return wordStr .. ", " .. charStr
  else
    return ""
  end
end


return M
