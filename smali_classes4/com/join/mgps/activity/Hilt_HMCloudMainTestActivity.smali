.class abstract Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;
.super Lcom/join/mgps/activity/HMCloudMenuActivity;
.source "SourceFile"


# instance fields
.field private injected:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudMenuActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;->injected:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;->_initHiltInternal()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity$a;-><init>(Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected inject()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;->injected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;->injected:Z

    .line 7
    .line 8
    invoke-static {p0}, Ljb/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljb/c;

    .line 13
    .line 14
    invoke-interface {v0}, Ljb/b;->generatedComponent()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/activity/s4;

    .line 19
    .line 20
    invoke-static {p0}, Ljb/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/join/mgps/activity/HMCloudMainTestActivity;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/join/mgps/activity/s4;->f(Lcom/join/mgps/activity/HMCloudMainTestActivity;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
