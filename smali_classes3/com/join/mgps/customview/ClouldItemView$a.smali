.class Lcom/join/mgps/customview/ClouldItemView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/customview/ClouldItemView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$a;->c:Lcom/join/mgps/customview/ClouldItemView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView$a;->b:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$a;->c:Lcom/join/mgps/customview/ClouldItemView;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView$a;->b:Z

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ClouldItemView;->setPoPoWindow2(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
