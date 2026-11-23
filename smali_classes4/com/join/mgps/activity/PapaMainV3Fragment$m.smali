.class Lcom/join/mgps/activity/PapaMainV3Fragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV3Fragment;->K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PapaMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$m;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$m;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
