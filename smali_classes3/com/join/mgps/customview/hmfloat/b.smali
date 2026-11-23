.class public final synthetic Lcom/join/mgps/customview/hmfloat/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

.field public final synthetic d:Lcom/haima/hmcp/beans/ResolutionInfo;


# direct methods
.method public synthetic constructor <init>(ZLcom/join/mgps/customview/hmfloat/HMFloatMenuView;Lcom/haima/hmcp/beans/ResolutionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/b;->b:Z

    iput-object p2, p0, Lcom/join/mgps/customview/hmfloat/b;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    iput-object p3, p0, Lcom/join/mgps/customview/hmfloat/b;->d:Lcom/haima/hmcp/beans/ResolutionInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/b;->b:Z

    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/b;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/b;->d:Lcom/haima/hmcp/beans/ResolutionInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->j(ZLcom/join/mgps/customview/hmfloat/HMFloatMenuView;Lcom/haima/hmcp/beans/ResolutionInfo;Landroid/view/View;)V

    return-void
.end method
