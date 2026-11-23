.class Lcom/join/mgps/customview/ClouldItemView2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/rorbin/badgeview/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView2;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/customview/ClouldItemView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView2;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$a;->f:Lcom/join/mgps/customview/ClouldItemView2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILq/rorbin/badgeview/a;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dragState",
            "badge",
            "targetView"
        }
    .end annotation

    .line 1
    const/4 p3, 0x4

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-interface {p2, p1}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
