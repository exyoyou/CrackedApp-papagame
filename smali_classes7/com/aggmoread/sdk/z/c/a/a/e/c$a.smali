.class final Lcom/aggmoread/sdk/z/c/a/a/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/c;->O()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->P()Z

    move-result v0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v1

    const-string v2, "device_rooted"

    invoke-virtual {v1, v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->b(Ljava/lang/String;Z)V

    return-void
.end method
