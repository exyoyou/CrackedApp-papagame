.class public final synthetic Lcom/join/mgps/Util/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/Util/StartGameMeta;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/Util/StartGameMeta;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/f3;->b:Lcom/join/mgps/Util/StartGameMeta;

    iput-object p2, p0, Lcom/join/mgps/Util/f3;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/f3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/Util/f3;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/Util/f3;->f:Ljava/lang/String;

    iput p6, p0, Lcom/join/mgps/Util/f3;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f3;->b:Lcom/join/mgps/Util/StartGameMeta;

    iget-object v1, p0, Lcom/join/mgps/Util/f3;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/Util/f3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/Util/f3;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/Util/f3;->f:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/Util/f3;->g:I

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/UtilsMy;->a(Lcom/join/mgps/Util/StartGameMeta;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
