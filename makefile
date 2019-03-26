generate_readme:
	@echo "Creating README.md file..."
	@touch README.md
	@echo "GuessingGame" > README.md
	@echo "Execution date: `/bin/date "+%Y-%m-%d %H:%M:%S"`" >> README.md
	@echo "Lines of code: `wc -l guessinggame.sh`"  >> README.md