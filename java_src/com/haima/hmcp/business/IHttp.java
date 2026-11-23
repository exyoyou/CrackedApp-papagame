package com.haima.hmcp.business;

/* JADX INFO: loaded from: classes5.dex */
public interface IHttp {

    public interface OnResponseListener<R> {
        void onError(int i10, int i11, String str);

        void onSuccess(R r10);
    }

    public static class RequestWrapper<T> {
        private T params;
        private IRequestPolicy requestPolicy;
        private String requestTag;
        private IRetryPolicy retryPolicy;
        private String url;

        public static class Builder<K> {
            private String url = "";
            private String requestTag = "";
            private K params = null;
            private IRetryPolicy retryPolicy = null;
            private IRequestPolicy requestPolicy = null;

            public RequestWrapper<K> build() {
                return new RequestWrapper<>(this);
            }

            public Builder<K> params(K k10) {
                this.params = k10;
                return this;
            }

            public Builder<K> requestPolicy(IRequestPolicy iRequestPolicy) {
                this.requestPolicy = iRequestPolicy;
                return this;
            }

            public Builder<K> requestTag(String str) {
                this.requestTag = str;
                return this;
            }

            public Builder<K> retryPolicy(IRetryPolicy iRetryPolicy) {
                this.retryPolicy = iRetryPolicy;
                return this;
            }

            public Builder<K> url(String str) {
                this.url = str;
                return this;
            }
        }

        public T getParams() {
            return this.params;
        }

        public IRequestPolicy getRequestPolicy() {
            return this.requestPolicy;
        }

        public String getRequestTag() {
            return this.requestTag;
        }

        public IRetryPolicy getRetryPolicy() {
            return this.retryPolicy;
        }

        public String getUrl() {
            return this.url;
        }

        public void setParams(T t10) {
            this.params = t10;
        }

        public void setRequestPolicy(IRequestPolicy iRequestPolicy) {
            this.requestPolicy = iRequestPolicy;
        }

        public void setRequestTag(String str) {
            this.requestTag = str;
        }

        public void setRetryPolicy(IRetryPolicy iRetryPolicy) {
            this.retryPolicy = iRetryPolicy;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        private RequestWrapper(Builder<T> builder) {
            this.url = ((Builder) builder).url;
            this.requestTag = ((Builder) builder).requestTag;
            this.params = (T) ((Builder) builder).params;
            this.retryPolicy = ((Builder) builder).retryPolicy;
            this.requestPolicy = ((Builder) builder).requestPolicy;
        }
    }

    void clear();

    void download(DownloadFileInfo downloadFileInfo, DownloadResponseListener downloadResponseListener);

    void get(RequestWrapper<?> requestWrapper, OnResponseListener onResponseListener);

    void post(RequestWrapper<?> requestWrapper, OnResponseListener onResponseListener);
}
