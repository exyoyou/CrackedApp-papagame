.class public final synthetic Lcom/join/mgps/adapter/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/x6;

.field public final synthetic c:Lcom/join/mgps/dto/GInfoBean;

.field public final synthetic d:Lcom/join/mgps/dto/CommonGameInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/v6;->b:Lcom/join/mgps/adapter/x6;

    iput-object p2, p0, Lcom/join/mgps/adapter/v6;->c:Lcom/join/mgps/dto/GInfoBean;

    iput-object p3, p0, Lcom/join/mgps/adapter/v6;->d:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v6;->b:Lcom/join/mgps/adapter/x6;

    iget-object v1, p0, Lcom/join/mgps/adapter/v6;->c:Lcom/join/mgps/dto/GInfoBean;

    iget-object v2, p0, Lcom/join/mgps/adapter/v6;->d:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/adapter/x6;->E(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method
