.class public final synthetic Lcom/join/mgps/adapter/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/n3;

.field public final synthetic c:Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/n3;Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/m3;->b:Lcom/join/mgps/adapter/n3;

    iput-object p2, p0, Lcom/join/mgps/adapter/m3;->c:Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->b:Lcom/join/mgps/adapter/n3;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->c:Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/n3;->a(Lcom/join/mgps/adapter/n3;Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;Landroid/view/View;)V

    return-void
.end method
