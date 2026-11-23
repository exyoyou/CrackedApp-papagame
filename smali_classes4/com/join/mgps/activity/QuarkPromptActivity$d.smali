.class Lcom/join/mgps/activity/QuarkPromptActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/QuarkPromptActivity;->tvDownloadNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/QuarkPromptActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$d;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$d;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->quark_display_count()Lorg/androidannotations/api/sharedpreferences/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$d;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskCfg;->getDisplay_count()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$d;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->quark_display_count()Lorg/androidannotations/api/sharedpreferences/i;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$d;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 49
    .line 50
    iget-object v2, v1, Lcom/join/mgps/activity/QuarkPromptActivity;->gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/join/mgps/activity/QuarkPromptActivity;->access$100(Lcom/join/mgps/activity/QuarkPromptActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
