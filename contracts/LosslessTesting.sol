import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./Interfaces/ILosslessGovernance.sol";

contract LosslessTesting is Initializable, ContextUpgradeable, PausableUpgradeable {
    ILssGovernance public losslessGovernance;

    function initialize(ILssGovernance _losslessGovernance) public initializer {
        losslessGovernance = _losslessGovernance;
    }

    function retrieveCompensation() public {
        losslessGovernance.retrieveCompensationForContract();
    }
}