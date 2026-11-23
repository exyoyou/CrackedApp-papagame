.class Lcom/windmill/sdk/strategy/s$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/s;->e()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/windmill/sdk/strategy/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$4;->a:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    check-cast p2, Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/strategy/s$4;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
