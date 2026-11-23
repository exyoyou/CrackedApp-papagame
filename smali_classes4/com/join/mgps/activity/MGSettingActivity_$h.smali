.class Lcom/join/mgps/activity/MGSettingActivity_$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGSettingActivity_;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/VersionDto;

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/activity/MGSettingActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$versionDto",
            "val$mandatory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->d:Lcom/join/mgps/activity/MGSettingActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->b:Lcom/join/mgps/dto/VersionDto;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->d:Lcom/join/mgps/activity/MGSettingActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->b:Lcom/join/mgps/dto/VersionDto;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/activity/MGSettingActivity_$h;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGSettingActivity_;->access$201(Lcom/join/mgps/activity/MGSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
