.class public Lcom/papa91/arc/MApplication;
.super Lcom/papa91/arc/BuglyApplication;
.source "SourceFile"


# static fields
.field public static adIdEmu:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/BuglyApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private initSharePref()V
    .locals 2

    .line 1
    const-string v0, "PrefDef"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/papa91/arc/MApplication$1;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/papa91/arc/MApplication$1;-><init>(Lcom/papa91/arc/MApplication;Landroid/content/SharedPreferences;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lcom/yatoooon/screenadaptation/a;->i(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/BuglyApplication;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->hasBeenInitialized()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {p0}, Lcom/yatoooon/screenadaptation/e;->b(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/papa91/arc/MApplication;->initSharePref()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
