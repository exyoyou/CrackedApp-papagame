package android.content.pm;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class PackageParser {

    public static final class Activity extends Component<ActivityIntentInfo> {
        public ActivityInfo info;
    }

    public static final class ActivityIntentInfo extends IntentInfo {
        public Activity activity;
    }

    public static class Component<II extends IntentInfo> {
        public String className;
        public ArrayList<II> intents;
        public Bundle metaData;

        public ComponentName getComponentName() {
            return null;
        }
    }

    public static final class Instrumentation extends Component<IntentInfo> {
        public InstrumentationInfo info;
    }

    public static class IntentInfo extends IntentFilter {
        public int banner;
        public boolean hasDefault;
        public int icon;
        public int labelRes;
        public int logo;
        public CharSequence nonLocalizedLabel;
    }

    public static final class Package {
        public ApplicationInfo applicationInfo;
        public String baseCodePath;
        public Bundle mAppMetaData;
        public Object mExtras;
        public int mPreferredOrder;
        public String mSharedUserId;
        public int mSharedUserLabel;
        public Signature[] mSignatures;
        public SigningDetails mSigningDetails;
        public int mVersionCode;
        public String mVersionName;
        public String packageName;
        public ArrayList<String> usesLibraries;
        public ArrayList<String> usesOptionalLibraries;
        public final ArrayList<Permission> permissions = new ArrayList<>(0);
        public final ArrayList<PermissionGroup> permissionGroups = new ArrayList<>(0);
        public final ArrayList<Activity> activities = new ArrayList<>(0);
        public final ArrayList<Activity> receivers = new ArrayList<>(0);
        public final ArrayList<Provider> providers = new ArrayList<>(0);
        public final ArrayList<Service> services = new ArrayList<>(0);
        public final ArrayList<Instrumentation> instrumentation = new ArrayList<>(0);
        public final ArrayList<String> requestedPermissions = new ArrayList<>();
        public ArrayList<ConfigurationInfo> configPreferences = null;
        public ArrayList<FeatureInfo> reqFeatures = null;
    }

    public static final class Permission extends Component<IntentInfo> {
        public PermissionInfo info;
    }

    public static final class PermissionGroup extends Component<IntentInfo> {
        public PermissionGroupInfo info;
    }

    public static final class Provider extends Component<ProviderIntentInfo> {
        public ProviderInfo info;
    }

    public static final class ProviderIntentInfo extends IntentInfo {
        public Provider provider;
    }

    public static final class Service extends Component<ServiceIntentInfo> {
        public ServiceInfo info;
    }

    public static final class ServiceIntentInfo extends IntentInfo {
        public Service service;
    }

    public static final class SigningDetails implements Parcelable {
        public static final Parcelable.Creator<SigningDetails> CREATOR = new Parcelable.Creator<SigningDetails>() { // from class: android.content.pm.PackageParser.SigningDetails.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SigningDetails createFromParcel(Parcel parcel) {
                throw new RuntimeException("Stub!");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SigningDetails[] newArray(int i10) {
                throw new RuntimeException("Stub!");
            }
        };
        public static final SigningDetails UNKNOWN = null;
        public Signature[] signatures;

        public @interface CertCapabilities {
            public static final int AUTH = 16;
            public static final int INSTALLED_DATA = 1;
            public static final int PERMISSION = 4;
            public static final int ROLLBACK = 8;
            public static final int SHARED_USER_ID = 2;
        }

        protected SigningDetails(Parcel parcel) {
            throw new RuntimeException("Stub!");
        }

        public boolean checkCapability(SigningDetails signingDetails, int i10) {
            throw new RuntimeException("Stub!");
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasAncestorOrSelf(SigningDetails signingDetails) {
            throw new RuntimeException("Stub!");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            throw new RuntimeException("Stub!");
        }
    }
}
