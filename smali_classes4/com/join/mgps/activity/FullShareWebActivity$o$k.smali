.class Lcom/join/mgps/activity/FullShareWebActivity$o$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$o;->shareFromJson(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/FullShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$o;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$k;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$k;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$k;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$k;->b:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/w;->s(Landroid/content/Context;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
