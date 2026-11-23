.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "u"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->b:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->b:I

    .line 2
    .line 3
    return p0
.end method
