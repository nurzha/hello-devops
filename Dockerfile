# TAG		wishpond/hello-rb
FROM		ruby:2.7

		# Set the working directory
WORKDIR		/var/www

		# Copy the application
ADD		. .
RUN		bundle install && \
		chown -R www-data:www-data /var/www

		# Runtime user
USER		www-data

		# Binding port tag
EXPOSE		4567

		# Runtime service
CMD		["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
