<div class="row">
	<div class="col-xs-12">
		<div class="post-queue panel panel-primary">
			<div class="panel-heading">
				[[admin/manage/post-queue:post-queue]]
			</div>

			<!-- IF !posts.length -->
			<p class="panel-body">
				[[admin/manage/post-queue:description, {config.relative_path}/admin/settings/post#posting-restrictions]]
			</p>
			<!-- ENDIF !posts.length -->

			<div class="table-responsive">
				<table class="table table-striped posts-list">
					<thead>
						<tr>
							<th>[[admin/manage/post-queue:user]]</th>
							<th>[[admin/manage/post-queue:title]]</th>
							<th>[[admin/manage/post-queue:content]]</th>
							<th>[[admin/manage/post-queue:posted]]</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN posts -->
						<tr data-id="{posts.id}">
							<td class="col-md-1">
								<!-- IF posts.user.userslug -->
								<a href="/uid/{posts.user.uid}">{posts.user.username}</a>
								<!-- ELSE -->
								{posts.user.username}
								<!-- ENDIF posts.user.userslug -->
							</td>
							<td class="col-md-2">
								{posts.data.title}
							</td>
							<td class="col-md-7">
								{posts.data.content}
							</td>
							<td class="col-md-1">
								<span class="timeago" title={posts.data.timestampISO}></span>
							</td>
							<td class="col-md-1">
								<div class="btn-group pull-right">
									<button class="btn btn-success btn-xs" data-action="accept"><i class="fa fa-check"></i></button>
									<button class="btn btn-danger btn-xs" data-action="delete"><i class="fa fa-times"></i></button>
								</div>
							</td>
						</tr>
						<!-- END posts -->
					</tbody>
				</table>
			</div>

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>