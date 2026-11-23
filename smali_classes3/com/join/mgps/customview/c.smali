.class public final synthetic Lcom/join/mgps/customview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/customview/ClouldItemView2;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/customview/ClouldItemView2;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/c;->b:Lcom/join/mgps/customview/ClouldItemView2;

    iput-boolean p2, p0, Lcom/join/mgps/customview/c;->c:Z

    iput p3, p0, Lcom/join/mgps/customview/c;->d:I

    iput p4, p0, Lcom/join/mgps/customview/c;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/c;->b:Lcom/join/mgps/customview/ClouldItemView2;

    iget-boolean v1, p0, Lcom/join/mgps/customview/c;->c:Z

    iget v2, p0, Lcom/join/mgps/customview/c;->d:I

    iget v3, p0, Lcom/join/mgps/customview/c;->e:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/mgps/customview/ClouldItemView2;->a(Lcom/join/mgps/customview/ClouldItemView2;ZIILandroid/view/View;)V

    return-void
.end method
