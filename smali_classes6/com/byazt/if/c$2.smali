.class public Lcom/byazt/if/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/plugin/Plugin$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1cf,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/if/c;->startService(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/if/c;


# direct methods
.method public constructor <init>(Lcom/byazt/if/c;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/if/c$2;->ve:Lcom/byazt/if/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/if/c$2;->c:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/if/c$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/if/c$2;->ve:Lcom/byazt/if/c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/if/c$2;->c:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/if/c$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/byazt/if/c;->tt(Lcom/byazt/if/c;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    return-void
.end method
