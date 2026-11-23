.class Lcom/join/mgps/customview/ClouldItemView2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView2;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/customview/ClouldItemView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView2;Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$data",
            "val$isLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->d:Lcom/join/mgps/customview/ClouldItemView2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->b:Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->d:Lcom/join/mgps/customview/ClouldItemView2;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView2;->e()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->b:Lcom/join/mgps/dto/CloudListDataBean;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setIsComment(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->d:Lcom/join/mgps/customview/ClouldItemView2;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClouldItemView2$b;->c:Z

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ClouldItemView2;->setPoPoWindow2(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
