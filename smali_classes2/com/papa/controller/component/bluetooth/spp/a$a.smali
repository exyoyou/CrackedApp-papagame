.class Lcom/papa/controller/component/bluetooth/spp/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/controller/component/bluetooth/spp/a;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->b:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->b:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->a(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->b:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->d(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$a;->b:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->a(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->q()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
