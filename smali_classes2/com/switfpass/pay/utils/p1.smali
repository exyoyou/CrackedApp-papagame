.class final Lcom/switfpass/pay/utils/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/switfpass/pay/utils/d0;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/b0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/p1;->a:Lcom/switfpass/pay/utils/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/switfpass/pay/utils/p1;->a:Lcom/switfpass/pay/utils/b0;

    const-string v1, "\u4ea4\u6613\u8fdb\u884c\u4e2d\uff0c\u786e\u8ba4\u662f\u5426\u4e2d\u65ad\u4ea4\u6613\uff1f"

    invoke-static {v0}, Lcom/switfpass/pay/utils/b0;->a(Lcom/switfpass/pay/utils/b0;)Lcom/switfpass/pay/utils/ProgressInfoDialog;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/switfpass/pay/utils/b0;->u(Ljava/lang/String;Lcom/switfpass/pay/utils/ProgressInfoDialog;)V

    return-void
.end method
