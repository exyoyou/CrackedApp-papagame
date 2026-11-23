package io.netty.handler.ssl.util;

import io.netty.handler.ssl.y;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Provider;
import javax.net.ssl.ManagerFactoryParameters;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.TrustManagerFactorySpi;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleTrustManagerFactory extends TrustManagerFactory {
    private static final FastThreadLocal<SimpleTrustManagerFactorySpi> CURRENT_SPI = new FastThreadLocal<SimpleTrustManagerFactorySpi>() { // from class: io.netty.handler.ssl.util.SimpleTrustManagerFactory.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public SimpleTrustManagerFactorySpi initialValue() {
            return new SimpleTrustManagerFactorySpi();
        }
    };
    private static final Provider PROVIDER;

    static {
        String str = "";
        PROVIDER = new Provider(str, 0.0d, str) { // from class: io.netty.handler.ssl.util.SimpleTrustManagerFactory.1
            private static final long serialVersionUID = -2680540247105807895L;
        };
    }

    protected SimpleTrustManagerFactory() {
        this("");
    }

    protected abstract TrustManager[] engineGetTrustManagers();

    protected abstract void engineInit(KeyStore keyStore) throws Exception;

    protected abstract void engineInit(ManagerFactoryParameters managerFactoryParameters) throws Exception;

    /* JADX WARN: Illegal instructions before constructor call */
    protected SimpleTrustManagerFactory(String str) {
        FastThreadLocal<SimpleTrustManagerFactorySpi> fastThreadLocal = CURRENT_SPI;
        super(fastThreadLocal.get(), PROVIDER, str);
        fastThreadLocal.get().init(this);
        fastThreadLocal.remove();
        ObjectUtil.checkNotNull(str, "name");
    }

    static final class SimpleTrustManagerFactorySpi extends TrustManagerFactorySpi {
        private SimpleTrustManagerFactory parent;
        private volatile TrustManager[] trustManagers;

        SimpleTrustManagerFactorySpi() {
        }

        @SuppressJava6Requirement(reason = "Usage guarded by java version check")
        private static void wrapIfNeeded(TrustManager[] trustManagerArr) {
            for (int i10 = 0; i10 < trustManagerArr.length; i10++) {
                TrustManager trustManager = trustManagerArr[i10];
                if ((trustManager instanceof X509TrustManager) && !y.a(trustManager)) {
                    trustManagerArr[i10] = new X509TrustManagerWrapper((X509TrustManager) trustManager);
                }
            }
        }

        @Override // javax.net.ssl.TrustManagerFactorySpi
        protected TrustManager[] engineGetTrustManagers() {
            TrustManager[] trustManagerArrEngineGetTrustManagers = this.trustManagers;
            if (trustManagerArrEngineGetTrustManagers == null) {
                trustManagerArrEngineGetTrustManagers = this.parent.engineGetTrustManagers();
                if (PlatformDependent.javaVersion() >= 7) {
                    wrapIfNeeded(trustManagerArrEngineGetTrustManagers);
                }
                this.trustManagers = trustManagerArrEngineGetTrustManagers;
            }
            return (TrustManager[]) trustManagerArrEngineGetTrustManagers.clone();
        }

        @Override // javax.net.ssl.TrustManagerFactorySpi
        protected void engineInit(KeyStore keyStore) throws KeyStoreException {
            try {
                this.parent.engineInit(keyStore);
            } catch (KeyStoreException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new KeyStoreException(e11);
            }
        }

        void init(SimpleTrustManagerFactory simpleTrustManagerFactory) {
            this.parent = simpleTrustManagerFactory;
        }

        @Override // javax.net.ssl.TrustManagerFactorySpi
        protected void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException {
            try {
                this.parent.engineInit(managerFactoryParameters);
            } catch (InvalidAlgorithmParameterException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new InvalidAlgorithmParameterException(e11);
            }
        }
    }
}
