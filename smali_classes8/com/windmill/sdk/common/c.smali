.class public Lcom/windmill/sdk/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/windmill/sdk/common/c;

.field private static g:Z

.field private static h:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/windmill/sdk/common/c;->e:I

    .line 6
    .line 7
    iput v0, p0, Lcom/windmill/sdk/common/c;->f:I

    .line 8
    .line 9
    return-void
.end method

.method public static a()Lcom/windmill/sdk/common/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/common/c;->a:Lcom/windmill/sdk/common/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/windmill/sdk/common/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/common/c;->a:Lcom/windmill/sdk/common/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/windmill/sdk/common/c;

    invoke-direct {v1}, Lcom/windmill/sdk/common/c;-><init>()V

    sput-object v1, Lcom/windmill/sdk/common/c;->a:Lcom/windmill/sdk/common/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/windmill/sdk/common/c;->a:Lcom/windmill/sdk/common/c;

    return-object v0
.end method

.method public static b()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/windmill/sdk/common/c;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/windmill/sdk/common/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public static h()I
    .locals 1

    .line 1
    sget v0, Lcom/windmill/sdk/common/c;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public static j()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/windmill/sdk/common/c;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method private l()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/common/h;->a()Lcom/windmill/sdk/common/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/windmill/sdk/common/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->notifyPrivacyStatusChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAge",
            "isPoint"
        }
    .end annotation

    .line 7
    iput p1, p0, Lcom/windmill/sdk/common/c;->e:I

    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/common/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_age"

    .line 9
    iget v2, p0, Lcom/windmill/sdk/common/c;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_0

    .line 11
    new-instance p2, Lcom/windmill/sdk/point/PointEntityWMGdpr;

    invoke-direct {p2}, Lcom/windmill/sdk/point/PointEntityWMGdpr;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setAge(Ljava/lang/String;)V

    const-string p1, "403"

    .line 13
    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string p1, "age"

    .line 14
    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string p1, "privacy"

    .line 15
    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/common/c;->b:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "gdpr_region"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/windmill/sdk/common/c;->g:Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extGDPRRegion"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/common/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gdpr_region"

    .line 25
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    sput-boolean p1, Lcom/windmill/sdk/common/c;->g:Z

    .line 28
    invoke-virtual {p0}, Lcom/windmill/sdk/common/c;->i()V

    return-void
.end method

.method public a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isAdult",
            "isPoint"
        }
    .end annotation

    .line 17
    iput-boolean p1, p0, Lcom/windmill/sdk/common/c;->d:Z

    if-eqz p2, :cond_1

    .line 18
    new-instance p1, Lcom/windmill/sdk/point/PointEntityWMGdpr;

    invoke-direct {p1}, Lcom/windmill/sdk/point/PointEntityWMGdpr;-><init>()V

    .line 19
    iget-boolean p2, p0, Lcom/windmill/sdk/common/c;->d:Z

    if-eqz p2, :cond_0

    const-string p2, "0"

    goto :goto_0

    :cond_0
    const-string p2, "1"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setIs_minor(Ljava/lang/String;)V

    const-string p2, "403"

    .line 20
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string p2, "adult"

    .line 21
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string p2, "privacy"

    .line 22
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    :cond_1
    return-void
.end method

.method public b(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "age_restricted",
            "isPoint"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/windmill/sdk/common/c;->f:I

    if-eq v0, p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/windmill/sdk/common/c;->l()V

    .line 5
    :cond_0
    iput p1, p0, Lcom/windmill/sdk/common/c;->f:I

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/common/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "age_restricted_status"

    .line 7
    iget v2, p0, Lcom/windmill/sdk/common/c;->f:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_1

    .line 9
    new-instance p2, Lcom/windmill/sdk/point/PointEntityWMGdpr;

    invoke-direct {p2}, Lcom/windmill/sdk/point/PointEntityWMGdpr;-><init>()V

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setAge_restricted(Ljava/lang/String;)V

    const-string p1, "403"

    .line 11
    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string p1, "coppa"

    .line 12
    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string p1, "privacy"

    .line 13
    invoke-virtual {p2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    :cond_1
    return-void
.end method

.method public b(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPersonalizedAdvertisingOn",
            "isPoint"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/common/c;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/common/c;->i:Ljava/lang/Boolean;

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/windmill/sdk/common/c;->c:Z

    if-eq v0, p1, :cond_1

    .line 18
    invoke-direct {p0}, Lcom/windmill/sdk/common/c;->l()V

    .line 19
    :cond_1
    iput-boolean p1, p0, Lcom/windmill/sdk/common/c;->c:Z

    if-eqz p2, :cond_3

    .line 20
    new-instance p1, Lcom/windmill/sdk/point/PointEntityWMGdpr;

    invoke-direct {p1}, Lcom/windmill/sdk/point/PointEntityWMGdpr;-><init>()V

    .line 21
    iget-boolean p2, p0, Lcom/windmill/sdk/common/c;->c:Z

    if-eqz p2, :cond_2

    const-string p2, "0"

    goto :goto_0

    :cond_2
    const-string p2, "1"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setIs_unpersonalized(Ljava/lang/String;)V

    const-string p2, "403"

    .line 22
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    const-string p2, "personalized"

    .line 23
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    const-string p2, "privacy"

    .line 24
    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    :cond_3
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/common/c;->e:I

    return v0
.end method

.method public c(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gdprConSentStatus",
            "isPoint"
        }
    .end annotation

    .line 2
    sget v0, Lcom/windmill/sdk/common/c;->h:I

    if-eq v0, p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/windmill/sdk/common/c;->l()V

    .line 4
    :cond_0
    sput p1, Lcom/windmill/sdk/common/c;->h:I

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/common/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "consent_status"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/windmill/sdk/common/c;->i()V

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/common/c;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/common/c;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/common/c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/c;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/windmill/sdk/common/c;->c:Z

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public i()V
    .locals 4

    .line 1
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWMGdpr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWMGdpr;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/windmill/sdk/common/c;->h()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setUser_consent(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/windmill/sdk/common/c;->j()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "1"

    .line 22
    .line 23
    const-string v3, "0"

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move-object v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v3

    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setGdpr_region(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/common/c;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v2, v3

    .line 47
    :goto_1
    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/mta/PointEntityGDPR;->setGdpr_dialog_region(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :catchall_0
    const-string v1, "consent"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "gdpr"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "403"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public k()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/c;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method
