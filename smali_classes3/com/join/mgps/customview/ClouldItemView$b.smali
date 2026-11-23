.class Lcom/join/mgps/customview/ClouldItemView$b;
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

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/customview/ClouldItemView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isSelecter",
            "val$type",
            "val$tabtype"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->e:Lcom/join/mgps/customview/ClouldItemView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClouldItemView$b;->b:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/customview/ClouldItemView$b;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/customview/ClouldItemView$b;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->b:Z

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->c:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x3

    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->d:I

    .line 19
    .line 20
    if-ne p1, v1, :cond_3

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->e:Lcom/join/mgps/customview/ClouldItemView;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView;->c()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-ne p1, v1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->e:Lcom/join/mgps/customview/ClouldItemView;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView;->c()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ClouldItemView$b;->e:Lcom/join/mgps/customview/ClouldItemView;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/customview/ClouldItemView;->c()V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    return-void
.end method
