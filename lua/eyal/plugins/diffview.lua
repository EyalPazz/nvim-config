local setup, comment = pcall(require, "diffview")
if not setup then
	return
end

comment.setup()
