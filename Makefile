PROJECT = rabbitmq_mqtt

DEPS = ranch rabbit_common rabbit amqp_client
TEST_DEPS = emqttc ct_helper rabbitmq_ct_helpers

dep_ct_helper = git https://github.com/extend/ct_helper.git master
dep_emqttc = git https://github.com/emqtt/emqttc.git master

DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

# FIXME: Use erlang.mk patched for RabbitMQ, while waiting for PRs to be
# reviewed and merged.

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

include rabbitmq-components.mk
include erlang.mk


clean::
	cd test/java_SUITE_data && make clean
