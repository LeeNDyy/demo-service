create a new empty branch: git checkout --orphan new-empty-branch, main path is key: --orphan

Про service.yaml:
Нужен для проксирования ip адреса, поды, на которых развернуто приложение меняют свой адрес динмачески, благодаря service данная механика скрывается и пользователи видят один ip адрес, по которому работает приложение.