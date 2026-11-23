.class public final synthetic Lcom/join/mgps/adapter/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/FriendBean;

    check-cast p2, Lcom/join/mgps/dto/FriendBean;

    invoke-static {p1, p2}, Lcom/join/mgps/adapter/v0;->b(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I

    move-result p1

    return p1
.end method
