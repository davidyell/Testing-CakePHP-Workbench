<div class="users index">
    <table summary="Users">
        <tr>
            <th>Id</th>
            <th>Username</th>
            <th>Groups</th>
        </tr>
        <?php foreach ($users as $user):?>
        <tr>
            <td><?php echo $user['User']['id'];?></td>
            <td><?php echo $user['User']['username'];?></td>
            <td>
                <?php
                $inGroups = '';
                var_dump($user);
                foreach ($user['Group'] as $group) {
                    var_dump($group);
                    echo $group['name'] . ", ";
                }
                ?>
            </td>
        </tr>
        <?php endforeach;?>
    </table>
</div>