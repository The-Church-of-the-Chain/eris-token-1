// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.4;

import "hardhat/console.sol";

import "../../primitives/Address.sol";
import "../libraries/dataTypes/collections/EnumerableSet.sol";
import "../libraries/dataTypes/collections/AddressSet.sol";
import "../libraries/dataTypes/collections/Bytes32Set.sol";

/**
 * RoleData datatype for reus in authroization system.
 */
library RoleData {

    using AddressSet for AddressSet.AddressSet;
    using Bytes32Set for Bytes32Set.Bytes32Set;

    struct RoleData {
        AddressSet.AddressSet members;
        bytes32 adminRole;
        bytes32 approverRole;
        Bytes32Set.Bytes32Set restrictedSharedRoles;
        mapping(address => bool) roleApproval;
    }

    struct ContractRoles {
        mapping( bytes32 => RoleData ) roles;
        bytes32 rootRole;
    }

}