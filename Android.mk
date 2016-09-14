LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LIBEVNET_SOURCES := \
	buffer.c \
	bufferevent.c \
	bufferevent_filter.c \
	bufferevent_pair.c \
	bufferevent_ratelim.c \
	bufferevent_sock.c\
	epoll.c \
	epoll_sub.c \
	evdns.c \
	event.c \
	event_tagging.c \
	evmap.c \
	evrpc.c \
	evthread.c \
	evthread_pthread.c \
	evutil.c \
	evutil_rand.c\
	http.c \
	listener.c \
	log.c \
	poll.c \
	select.c \
	signal.c \
	strlcpy.c

LOCAL_MODULE := event
LOCAL_SRC_FILES := $(addprefix libevent/, $(LIBEVNET_SOURCES))
LOCAL_CFLAGS := -O2 -I$(LOCAL_PATH)/libevent \
	-I$(LOCAL_PATH)/libevent/include 

include $(BUILD_STATIC_LIBRARY)


