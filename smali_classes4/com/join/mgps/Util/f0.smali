.class public final synthetic Lcom/join/mgps/Util/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/Util/g0;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/join/mgps/dto/DomainInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/f0;->b:Lcom/join/mgps/Util/g0;

    iput-object p2, p0, Lcom/join/mgps/Util/f0;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/f0;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/Util/f0;->e:Lcom/join/mgps/dto/DomainInfoBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f0;->b:Lcom/join/mgps/Util/g0;

    iget-object v1, p0, Lcom/join/mgps/Util/f0;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/Util/f0;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/Util/f0;->e:Lcom/join/mgps/dto/DomainInfoBean;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/Util/g0;->a(Lcom/join/mgps/Util/g0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V

    return-void
.end method
