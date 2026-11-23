.class public final synthetic Lcom/join/kotlin/ui/gameexpress/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/utils/DownloadTaskEventListener;


# instance fields
.field public final synthetic a:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/i;->a:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    return-void
.end method


# virtual methods
.method public final onDownloadTaskEvent(Lcom/join/mgps/event/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/i;->a:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->u(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;Lcom/join/mgps/event/r;)V

    return-void
.end method
